//
//  ViewController.swift
//  ChiracBoard
//
//  Created by Nicolas Besnard on 14/02/2015.
//  Copyright (c) 2015 Nicolas Besnard. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    var sounds: [String] = []
    var audioPlayer: AVPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: UIScreen.mainScreen().bounds.width / 2, height: UIScreen.mainScreen().bounds.width / 2)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        collectionView.collectionViewLayout = layout
        
        audioPlayer = AVPlayer()
        
        loadSounds()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sounds.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionViewCellId", forIndexPath: indexPath) as CollectionViewCell
        
        cell.labelView.text = sounds[indexPath.row]
        
        
        cell.imageView.image = UIImage(named: "\(indexPath.row)")

        cell.blur()
        
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        var soundFileName = sounds[indexPath.row]
        var sound = NSBundle.mainBundle().URLForResource(soundFileName, withExtension: "mp3")
        var soundPath = AVPlayerItem(URL: sound)
        
        self.audioPlayer.replaceCurrentItemWithPlayerItem(soundPath)
        self.audioPlayer.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func loadSounds() {
        sounds = [
            "Abracadabra",
            "Allo",
            "Banalisation",
            "Bonjour",
            "Bovins",
            "Bruit et odeur",
            "Bûches",
            "Ca rate",
            "Chlorophorme",
            "Cidre",
            "Clarification",
            "Colère",
            "Coloriage",
            "Compatriotes",
            "Coupe de France",
            "Concorde",
            "Content",
            "Dans les yeux",
            "Dissolution",
            "Droits de l'homme",
            "Execution",
            "France 2",
            "Fureur",
            "Inadmissible",
            "Je tiens",
            "Je veux",
            "Lapin",
            "Loin mais beau",
            "Maison",
            "Plaçou",
            "Politique",
            "Pomme",
            "Pommes",
            "Président",
            "Pschit",
            "Publicité",
            "Reflexion",
            "Rien vu",
            "Roquet",
            "Sale gueule",
            "Servir",
            "Terrorisme",
            "Traque",
            "Vive la France",
            "Bonus 1",
            "Bonus 2"
        ]
    }


}

