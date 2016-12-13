package com.sut.unnie.web;
import com.sut.unnie.domain.Salt;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/salts")
@Controller
@RooWebScaffold(path = "salts", formBackingObject = Salt.class)
public class SaltController {
}
