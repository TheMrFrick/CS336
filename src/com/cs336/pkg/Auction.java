package com.cs336.pkg;

public class Auction {

	private int itemID;
	private double minPrice, initPrice, bidIncr;
	private String seller;
	
	public int getItemID() {
		return this.itemID;	
	}
	
	public double getMinPrice() {
		return this.minPrice;
	}
	
	public double getInitPrice() {
		return this.initPrice;
	}
	
	public double getBidIncr() {
		return this.bidIncr;
	}
	
	public String getSeller() {
		return this.seller;
	}
	
	public void setItemID(int itemID) {
		this.itemID = itemID;
	}
	
	public void setMinPrice(double minPrice) {
		this.minPrice = minPrice;
	}
	
	public void setIntiPrice(double initPrice) {
		this.initPrice = initPrice;
	}
	
	public void setBidIncr(double bidIncr) {
		this.bidIncr = bidIncr;
	}
	
	public void setSeller(String seller) {
		this.seller = seller;
	}
	
}
