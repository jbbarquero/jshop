package com.malsolo.jshop.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import com.malsolo.jshop.domain.Kind;
import javax.persistence.ManyToOne;
import com.malsolo.jshop.domain.Brand;
import java.util.Set;
import com.malsolo.jshop.domain.StockLine;
import java.util.HashSet;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;

@RooJavaBean
@RooToString
@RooEntity
public class ElectricalAppliance {

    @NotNull
    @Size(min = 1, max = 50)
    private String name;

    @NotNull
    @Size(max = 250)
    private String description;

    @NotNull
    @Size(max = 150)
    private String model;

    @NotNull
    private Float earnings;

    @NotNull
    @ManyToOne
    private Kind kind;

    @NotNull
    @ManyToOne
    private Brand brand;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<StockLine> stockLines = new HashSet<StockLine>();
}
