// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.web;

import com.malsolo.jshop.domain.Brand;
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

privileged aspect BrandController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String BrandController.create(@Valid Brand brand, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("brand", brand);
            return "brands/create";
        }
        brand.persist();
        return "redirect:/brands/" + encodeUrlPathSegment(brand.getId().toString(), request);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String BrandController.createForm(Model model) {
        model.addAttribute("brand", new Brand());
        return "brands/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String BrandController.show(@PathVariable("id") Long id, Model model) {
        model.addAttribute("brand", Brand.findBrand(id));
        model.addAttribute("itemId", id);
        return "brands/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String BrandController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            model.addAttribute("brands", Brand.findBrandEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) Brand.countBrands() / sizeNo;
            model.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            model.addAttribute("brands", Brand.findAllBrands());
        }
        return "brands/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String BrandController.update(@Valid Brand brand, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("brand", brand);
            return "brands/update";
        }
        brand.merge();
        return "redirect:/brands/" + encodeUrlPathSegment(brand.getId().toString(), request);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String BrandController.updateForm(@PathVariable("id") Long id, Model model) {
        model.addAttribute("brand", Brand.findBrand(id));
        return "brands/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String BrandController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        Brand.findBrand(id).remove();
        model.addAttribute("page", (page == null) ? "1" : page.toString());
        model.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/brands?page=" + ((page == null) ? "1" : page.toString()) + "&size=" + ((size == null) ? "10" : size.toString());
    }
    
    String BrandController.encodeUrlPathSegment(String pathSegment, HttpServletRequest request) {
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
