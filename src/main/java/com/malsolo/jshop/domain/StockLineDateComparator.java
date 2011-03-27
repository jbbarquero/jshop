package com.malsolo.jshop.domain;

import java.util.Comparator;

/**
 * Clase que compara las fechas de alta de dos stockline's.
 * @since 15-03-2011
 * @author angelilloga
 *
 */
public class StockLineDateComparator implements Comparator<StockLine> {

	@Override
	public int compare(StockLine stockLine0, StockLine stockLine1) {
		return stockLine1.getStockDate().compareTo(stockLine0.getStockDate());
	}

}
