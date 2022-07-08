//
//  ViewController.swift
//  Dropdown
//
//  Created by Tech Fitco on 7/07/22.
//

import UIKit

class CellClass : UITableViewCell {
  
}

class ViewController: UIViewController {

  
  @IBOutlet weak var btnSelectItem: UIButton!
  
  let transparentView = UIView()
  let table = UITableView()
  
  var btnSelected = UIButton()
  var dataSource = [String]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    table.delegate = self
    table.dataSource = self
    table.register(CellClass.self, forCellReuseIdentifier: "Cell")
  }
  
  
  func addTransparenView(frames:CGRect){
    let window = UIApplication
      .shared
      .connectedScenes
      .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
      .first { $0.isKeyWindow }
    
    transparentView.frame = window?.frame ?? self.view.frame
    self.view.addSubview(transparentView)
    
    table.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
    self.view.addSubview(table)
    table.layer.cornerRadius = 5
    
    transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
    table.reloadData()
    
    let tapgesture = UITapGestureRecognizer(target: self, action: #selector(removeTransparentView))
    transparentView.addGestureRecognizer(tapgesture)
    transparentView.alpha = 0
    UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
      self.transparentView.alpha = 0.5
      self.table.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height + 5, width: frames.width, height: CGFloat(self.dataSource.count * 50))
    }, completion: nil)
  }
  
  @objc func removeTransparentView(){
    let frames = btnSelected.frame
    UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
      self.transparentView.alpha = 0.0
      self.table.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
    }, completion: nil)
  }
  
  
  @IBAction func onclickSelectItem(_ sender: Any) {
    dataSource = ["Item N°1", "Item N°2", "Item N°3"]
    btnSelected = btnSelectItem
    addTransparenView(frames: btnSelectItem.frame)
  }
  

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataSource.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel?.text = dataSource[indexPath.row]
    return cell
  }
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 50
  }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    btnSelected.setTitle(dataSource[indexPath.row], for: .normal)
    removeTransparentView()
  }
  
}
