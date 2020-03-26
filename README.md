# CollectionView-TouchMovments
Can you rearrange your collectionView by holding for cell and move anywhere you want 😊

<img src="https://media.giphy.com/media/XzY48sulpjSxgO305q/giphy.gif" width="300" height="450" />

-> First What We Want ⁉️
   Recognize longPress for cell. 

let long press = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(press:)))
CollectionView.addGestureRecognizer(longPress)

-> Handling LongPress Cases 😉
@objc func handleLongPress(press:UILongPressGestureRecognizer)
began / changed / ended / cancelled

-> Enable UICollectionView [canMoveItemAt]  this method selectively allow or disallow the movement of items within a      collection view.


-> UICollectionView [moveItemAt] To can rearrange CollectionView 👀
You must implement this method to support the reordering of items within the collection view. If you do not implement this method, the collection view ignores any attempts to reorder items.
When interactions with an item end, the collection view calls this method if the position of the item changed. Use this method to update your data structures with the new index path information.





