# CollectionView-TouchMovments
Can you rearrange your collectionView by holding for cell and move anywhere you want 😊

<img src="https://media.giphy.com/media/XzY48sulpjSxgO305q/giphy.gif" width="150" height="300" />

👉 First What We Want ⁉️
   Recognize longPress for cell. 

1️⃣ let long press = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(press:)))
CollectionView.addGestureRecognizer(longPress)

2️⃣ Handling LongPress Cases 😉
@objc func handleLongPress(press:UILongPressGestureRecognizer)
began / changed / ended / cancelled

3️⃣ Enable UICollectionView [canMoveItemAt]  this method selectively allow or disallow the movement of items within a      collection view.


4️⃣ UICollectionView [moveItemAt] To can rearrange CollectionView 👀
You must implement this method to support the reordering of items within the collection view. If you do not implement this method, the collection view ignores any attempts to reorder items.
When interactions with an item end, the collection view calls this method if the position of the item changed. Use this method to update your data structures with the new index path information.




