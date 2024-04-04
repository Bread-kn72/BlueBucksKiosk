
import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellImage.layer.cornerRadius = cellImage.frame.height/2
        cellImage.layer.borderWidth = 1
        cellImage.clipsToBounds = true
        cellImage.layer.borderColor = UIColor.clear.cgColor
    }
}
