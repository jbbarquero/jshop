// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.web;

import com.malsolo.jshop.domain.Kind;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect KindController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String KindController.create(@Valid Kind kind, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("kind", kind);
            return "kinds/create";
        }
        kind.persist();
        return "redirect:/kinds/" + encodeUrlPathSegment(kind.getId().toString(), request);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String KindController.createForm(Model model) {
        model.addAttribute("kind", new Kind());
        return "kinds/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String KindController.show(@PathVariable("id") Long id, Model model) {
        model.addAttribute("kind", Kind.findKind(id));
        model.addAttribute("itemId", id);
        return "kinds/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String KindController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            model.addAttribute("kinds", Kind.findKindEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) Kind.countKinds() / sizeNo;
            model.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            model.addAttribute("kinds", Kind.findAllKinds());
        }
        return "kinds/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String KindController.update(@Valid Kind kind, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("kind", kind);
            return "kinds/update";
        }
        kind.merge();
        return "redirect:/kinds/" + encodeUrlPathSegment(kind.getId().toString(), request);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String KindController.updateForm(@PathVariable("id") Long id, Model model) {
        model.addAttribute("kind", Kind.findKind(id));
        return "kinds/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String KindController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        Kind.findKind(id).remove();
        model.addAttribute("page", (page == null) ? "1" : page.toString());
        model.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/kinds?page=" + ((page == null) ? "1" : page.toString()) + "&size=" + ((size == null) ? "10" : size.toString());
    }
    
    String KindController.encodeUrlPathSegment(String pathSegment, HttpServletRequest request) {
        String enc = request.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
