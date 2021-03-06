package com.malsolo.jshop.web;

import com.malsolo.jshop.domain.Brand;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "brands", formBackingObject = Brand.class)
@RequestMapping("/brands")
@Controller
public class BrandController {
}
