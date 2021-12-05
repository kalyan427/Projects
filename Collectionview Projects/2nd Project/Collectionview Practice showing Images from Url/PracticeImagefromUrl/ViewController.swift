//
//  ViewController.swift
//  PracticeImagefromUrl
//
//  Created by kalyan  on 12/2/21.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var arrayItems = ["A","B","C","D","E","F","G"]
    var imageItems = ["A","B","C","D","E","F","G"]
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageIcon: [ImageList] = [
        ImageList(name: "https://images.unsplash.com/photo-1620165362197-5bc50d8133e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=676&q=80", price: 2.99),
        ImageList(name: "https://images.unsplash.com/photo-1637102839226-e6b3402a9a0a?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 3.99),
        ImageList(name: "https://images.unsplash.com/photo-1620439032894-e97858a0bc11?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 4.99),
        ImageList(name: "https://images.unsplash.com/photo-1637090405093-0bc0a607b441?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 5.99),
        ImageList(name: "https://images.unsplash.com/photo-1637170548426-d002d5661e86?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 6.99),
        ImageList(name: "https://images.unsplash.com/photo-1637076574797-a89ed81d0e44?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 7.99),
        ImageList(name: "https://images.unsplash.com/photo-1637160083545-3907c0548d62?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 8.99),
        ImageList(name: "https://images.unsplash.com/photo-1471897488648-5eae4ac6686b?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 9.99),
        ImageList(name: "https://images.unsplash.com/photo-1637162330294-28cc8540d41d?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 10.99),
        ImageList(name: "https://images.unsplash.com/photo-1637176473226-4772830471b5?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 11.99),
        ImageList(name: "https://images.unsplash.com/photo-1637173682466-9c9a46ae79e8?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzM3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 12.99),
        ImageList(name: "https://images.unsplash.com/photo-1637172973260-1c6c0695611b?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzN3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 13.99),
        ImageList(name: "https://images.unsplash.com/photo-1637254388215-13cb3921fa4c?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 14.99),
        ImageList(name: "https://images.unsplash.com/photo-1637212225447-9acb8b11e0f4?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 15.99),
        ImageList(name: "https://images.unsplash.com/photo-1637249833220-d399eb65e802?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 16.99),
        ImageList(name: "https://images.unsplash.com/photo-1637139498630-9a580b24fa75?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 17.99),
        ImageList(name: "https://images.unsplash.com/photo-1637212225459-96d88d30d619?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 18.99),
        ImageList(name: "https://images.unsplash.com/photo-1637253161360-8eacf6fb6437?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 19.99),
        ImageList(name: "https://images.unsplash.com/photo-1637263706784-4836355ab1c8?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 20.99),
        ImageList(name: "https://images.unsplash.com/photo-1637102838603-d1c02da68c66?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 21.99),
        ImageList(name: "https://images.unsplash.com/photo-1637194990554-ced1a7812b51?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 22.99),
        ImageList(name: "https://images.unsplash.com/photo-1637170488322-fad75c95a208?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 23.99),
        ImageList(name: "https://images.unsplash.com/photo-1637149690873-2bbccb783360?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzM3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 25.99),
        ImageList(name: "https://images.unsplash.com/photo-1637139500424-2bd66d5edd23?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 26.99),
        ImageList(name: "https://images.unsplash.com/photo-1637222577857-eb16a833ec94?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 27.99),
        ImageList(name: "https://images.unsplash.com/photo-1637257100341-853107e7763b?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 28.99),
        ImageList(name: "https://images.unsplash.com/photo-1637179515167-48aeb4171b27?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 29.99),
        ImageList(name: "https://images.unsplash.com/photo-1637236597834-7aec59385f06?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0MXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 30.99),
        ImageList(name: "https://images.unsplash.com/photo-1637212225444-77622d857c4e?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0M3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", price: 31.99)
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Collectionview methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageIcon.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! ImageCollectionViewCell
        let icon = imageIcon[indexPath.row]
        
        DispatchQueue.global().async {
            if let url = URL(string: icon.name) {
                if let data = try? Data(contentsOf: url) {
                    if let downloadImage = UIImage(data: data) {
                        DispatchQueue.main.async {
                            cell.imageView.image = downloadImage
                        }
                    }
                }
            }
        }
        cell.imageLabel.text = "\(imageIcon[indexPath.row].price)"
        
        return cell
    }
    
    //MARK: - API Calling
    
    
}

