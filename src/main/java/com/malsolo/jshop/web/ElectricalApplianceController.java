package com.malsolo.jshop.web;

import com.malsolo.jshop.domain.ElectricalAppliance;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "electricalappliances", formBackingObject = ElectricalAppliance.class)
@RequestMapping("/electricalappliances")
@Controller
public class ElectricalApplianceController {
}
