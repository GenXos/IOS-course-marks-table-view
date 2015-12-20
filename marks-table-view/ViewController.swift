//
//  ViewController.swift
//  marks-table-view
//
//  Created by Todd Fields on 2015-12-19.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  @IBOutlet weak var tableView: UITableView!
  
  var uglyThings = ["http://2.bp.blogspot.com/_ym-eqNRfJpA/SrQ9KqvREEI/AAAAAAAAEaA/UzVYGyyan9M/s400/Ugly_dog.jpg", "http://archive.pokedit.com/boards/ckfinder/userfiles/2/images/ugly-pokemon-post.jpg", "http://yourblackworld.net/wp-content/uploads/2013/03/c0c4scary-fish.jpg", "http://2.bp.blogspot.com/_Jmv4oU5K4LM/Sj8WjK2cvmI/AAAAAAAAAkY/XWvMtVCSNR0/s320/ugly-hamsters2.jpg", "http://xaxor.com/images/95865/ugly_pokemon_02.jpg"]
  
  var uglyTitles = ["Oy Vey!", "Gotta catch them all...", "Throw it back", "Too much time on the wheel", "uhhhh...No."]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.delegate = self
    tableView.dataSource = self
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    if let cell = tableView.dequeueReusableCellWithIdentifier("UglyCell") as? UglyCell {
      
      var img: UIImage!
      
      let url = NSURL(string: uglyThings[indexPath.row])!
      
      if let data = NSData(contentsOfURL: url) {
        img = UIImage(data: data)
      } else {
        img = UIImage(named: "44Ooolong")
      }
      
      cell.configureCell(img, text: uglyTitles[indexPath.row])
      return cell
      
    } else {
        return UglyCell()
    }
    
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    
    return 1
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return uglyThings.count
  }

}

