package com.malsolo.jshop.web;

import com.malsolo.jshop.domain.Kind;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "kinds", formBackingObject = Kind.class)
@RequestMapping("/kinds")
@Controller
public class KindController {
}
