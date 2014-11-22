//
//  ViewController.swift
//  LemonadeStand
//
//  Created by Christian Romeyke on 22/11/14.
//  Copyright (c) 2014 Christian Romeyke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var budgetLabel: UILabel!
    
    @IBOutlet weak var lemonsInInventoryLabel: UILabel!
    @IBOutlet weak var iceCubesInInventoryLabel: UILabel!
    @IBOutlet weak var lemonsInMixLabel: UILabel!
    @IBOutlet weak var iceCubesInMixLabel: UILabel!
    
    @IBOutlet weak var startDayButton: UIButton!
    
    var stand: LemonadeStand!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Game.reset()
        stand = Game.lemonadeStand
        updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addLemonToInventoryButtonPressed(sender: UIButton) {
        stand.addLemonToInventory()
        updateView()
    }
    @IBAction func removeLemonFromInventoryButtonPressed(sender: UIButton) {
        stand.removeLemonFromInventory()
        updateView()
    }
    @IBAction func addIceCubeToInventoryButtonPressed(sender: UIButton) {
        stand.addIceCubeToInventory()
        updateView()
    }
    @IBAction func removeIceCubeFromInventoryButtonPressed(sender: UIButton) {
        stand.removeIceCubeFromInventory()
        updateView()
    }
    @IBAction func addLemonToMixButtonPressed(sender: UIButton) {
        stand.addLemonToMix()
        updateView()
    }
    @IBAction func removeLemonFromMixButtonPressed(sender: UIButton) {
        stand.removeLemonFromMix()
        updateView()
    }
    @IBAction func addIceCubeToMixButtonPressed(sender: UIButton) {
        stand.addIceCubeToMix()
        updateView()
    }
    @IBAction func removeIceCubeFromMixButtonPressed(sender: UIButton) {
        stand.removeIceCubesFromMix()
        updateView()
    }
    @IBAction func startDayButtonPressed(sender: UIButton) {
        let result = Game.startDay()
        var alert = UIAlertController(title: "Info", message: result, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        presentViewController(alert, animated: true, completion: nil)
        updateView()
    }
    
    @IBAction func resetButtonPressed(sender: UIButton) {
        Game.reset()
        updateView()
    }
    
    func updateView() {
        budgetLabel.text = "$\(stand.budget)"
        lemonsInInventoryLabel.text = "\(stand.lemonsInInventory)"
        iceCubesInInventoryLabel.text = "\(stand.iceCubesInInventory)"
        lemonsInMixLabel.text = "\(stand.lemonsInMix)"
        iceCubesInMixLabel.text = "\(stand.iceCubesInMix)"
        startDayButton.setImage(UIImage(named: Game.nextDaysWeather.description), forState: UIControlState.Normal)
    }
    

}

