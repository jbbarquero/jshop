package com.malsolo.jshop.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import com.malsolo.jshop.domain.Provider;
import javax.persistence.ManyToOne;
import com.malsolo.jshop.domain.ElectricalAppliance;

@RooJavaBean
@RooToString
@RooEntity(finders = { "findStockLinesByCostBetweenAndProviderAndQuantityBetweenAndStockDateBetween" })
public class StockLine {

    @NotNull
    private Integer quantity;

    @NotNull
    private Double cost;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date stockDate;

    @NotNull
    @ManyToOne
    private Provider provider;

    @ManyToOne
    private ElectricalAppliance electrialAppliance;
}
