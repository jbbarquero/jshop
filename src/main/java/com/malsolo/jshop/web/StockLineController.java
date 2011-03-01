package com.malsolo.jshop.web;

import com.malsolo.jshop.domain.StockLine;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "stocklines", formBackingObject = StockLine.class)
@RequestMapping("/stocklines")
@Controller
public class StockLineController {
}
