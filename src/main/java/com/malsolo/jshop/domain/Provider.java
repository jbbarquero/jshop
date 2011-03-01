package com.malsolo.jshop.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class Provider {

    @NotNull
    @Size(min = 1, max = 50)
    private String name;

    @NotNull
    @Size(max = 250)
    private String description;
}
