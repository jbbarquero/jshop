package com.malsolo.jshop.domain;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity(finders = { "findElectricalAppliancesByBrandAndKindAndModelLike" })
public class ElectricalAppliance {

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

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "electrialAppliance")
    private Set<StockLine> stockLines = new HashSet<StockLine>();
    
    // ~ Métodos creados para sacar parámetros específicos en la vista.
    /**
     * Método que devuelve la fecha del último stockline
     * @return {@link Date}
     */
    public Date getLastDateStockLine(){
    	Date resultado = null;
    	
    	if (this.stockLines != null && this.stockLines.size() > 0){
    		List<StockLine> stockLinesOrdenar = new ArrayList<StockLine>(this.stockLines);
    		Collections.sort(stockLinesOrdenar, new StockLineDateComparator());
    		resultado = stockLinesOrdenar.get(0).getStockDate();
    	}
    	
    	return resultado;
    }
    
    /**
     * Método que devuelve la cantidad total de objetos que hay en stock en la tienda, a partir de todas los stocklines.
     * @return int
     */
    public int getAddQuantity(){
    	int resultado = 0;
    	
    	for(StockLine stockLine: this.stockLines){
    		resultado += stockLine.getQuantity();
    	}    	
    	return resultado;
    }
    
    /**
     * Método que devuelve la media del precio del producto.
     * @return {@link Double}
     */
    public Double getAverageCost(){
    	Double resultado = new Double(0);
    	
    	int numeroTotal 	= 0;
    	Double precioTotal 	= new Double(0);
    	for(StockLine stockLine: this.stockLines){
    		if (stockLine.getQuantity() != 0){
    			numeroTotal += stockLine.getQuantity();
    			precioTotal += stockLine.getCost() * stockLine.getQuantity();
    		}
    	}
    	
    	resultado = precioTotal / numeroTotal;
    	return resultado;
    }
    
    /**
     * Método que devuelve el precio de venta al publico del artículo.
     * @return {@link Double}
     */
    public Double getSalePrice(){
    	Double resultado = new Double(0);
    	
    	int numeroTotal 	= 0;
    	Double precioTotal 	= new Double(0);
    	for(StockLine stockLine: this.stockLines){
    		if (stockLine.getQuantity() != 0){
    			numeroTotal += stockLine.getQuantity();
    			precioTotal += stockLine.getCost() * stockLine.getQuantity();
    		}
    	}
    	
    	Double media = precioTotal / numeroTotal;
    	
    	resultado = media + ((media/100)*this.earnings);    	
    	return resultado;
    }
    
    /**
     * Método que devuelve el beneficio obtenido por producto.
     * @return {@link Double}
     */
    public Double getAdvantage(){    	
    	int numeroTotal 	= 0;
    	Double precioTotal 	= new Double(0);
    	for(StockLine stockLine: this.stockLines){
    		if (stockLine.getQuantity() != 0){
    			numeroTotal += stockLine.getQuantity();
    			precioTotal += stockLine.getCost() * stockLine.getQuantity();
    		}
    	}
    	
    	Double media = precioTotal / numeroTotal;
    	
    	Double precioVenta = media + ((media/100)*this.earnings);    	
    	return precioVenta - media;
    }
}
