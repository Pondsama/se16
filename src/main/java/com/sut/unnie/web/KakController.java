package com.sut.unnie.web;
import com.sut.unnie.domain.Kak;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/kaks")
@Controller
@RooWebScaffold(path = "kaks", formBackingObject = Kak.class)
public class KakController {
}
