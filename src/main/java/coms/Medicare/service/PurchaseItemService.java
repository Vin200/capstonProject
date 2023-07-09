package coms.Medicare.service;

import java.util.List;

import coms.Medicare.model.PurchaseItem;
import coms.Medicare.model.PurchaseOrder;
import coms.Medicare.model.User;



public interface PurchaseItemService {

	public PurchaseItem getPurchaseItemById(Long id);

	public List<PurchaseItem> getAllItemsByPurchaseOrder(PurchaseOrder order);

	public List<PurchaseItem> getAllPurchaseItemByUserId(User userId);

	public PurchaseItem savePurchaseItem(PurchaseItem purchaseItem);

	public List<PurchaseItem> getAllPurchaseItemList();

}
