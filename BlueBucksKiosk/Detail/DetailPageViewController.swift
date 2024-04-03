//
//  DetailPageViewController.swift
//  BlueBucksKiosk
//
//  Created by 박윤희 on 2024/04/02.
//변수명 변경예정

import UIKit

class DetailPageViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet var descriptionText: UILabel!
    
    
    //선택한 제품의 이미지, 이름, 가격
    var selectedImage: UIImage?
    var selectedName: String = "아이스 아메리카노"
    var selectedPrice: Int = 4500
    
    //음료명과 상세설명 매핑 ["음료명": "상세섦명"]
    let drinkDescription: [String: String] = [
        "아이스 아메리카노": "블루벅스만의 깔끔하고 강렬한 에스프레소를 가장 부드럽고 시원하게 즐길 수 있는 커피"
                                              ]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        //이전 뷰컨트롤러에 있는 정보 가져오기
        imageView.image = selectedImage
        nameLabel.text = selectedName
        priceLabel.text = "\(selectedPrice)₩"
        
        //음료명에 따른 상세설명 표시
        if let drinkDescription = drinkDescription[selectedName]{
            descriptionText.text = drinkDescription
        }else{
            descriptionText.text = "상세설명 없음"
        }
    }
   
//    //segue로 다음 뷰컨트롤러에 정보 전달
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // if segue.identifier == "세그웨이 식별자 이름"
//        if segue.identifier == ""{
//            //if let nextVC = segue.destination as? 다음 뷰 컨트롤러 이름
//            if let nextVC = segue.destination as? _ {
//                nextVC.selectedName = selectedName
//                nextVC.selectedPrice = selectedPrice
//            }
//        }
//    }
//
//    //버튼을 누르면 다음 뷰컨트롤러로 이동 및 정보 전달
//    @IBAction func tappedInto(_ sender: UIButton) {
//        //performSegue(withIdentifier: "세그웨이 식별자 이름", sender: self)
//        performSegue(withIdentifier: <#T##String#>, sender: self)
//
//    }

}
