//
//  ViewController.swift
//  Ben 10 3D Cards
//
//  Created by Harsh Londhekar on 11/10/20.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    //HapticFeedback Delegate
    let haptic = haptickFeedback()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        sceneView.autoenablesDefaultLighting = true
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARImageTrackingConfiguration()
        
        if let imageToTrack = ARReferenceImage.referenceImages(inGroupNamed: "Ben10", bundle: Bundle.main){
            configuration.trackingImages = imageToTrack
            configuration.maximumNumberOfTrackedImages = 10
            print("Images successfully added")

        }
        

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
        
        if let imageAnchor = anchor as? ARImageAnchor {
            
            let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)
            
            plane.firstMaterial?.diffuse.contents = UIColor(white: 1.0, alpha: 0.5)
            
            let planeNode = SCNNode(geometry: plane)
            
            planeNode.eulerAngles.x = -.pi / 2
    
            
            node.addChildNode(planeNode)
            
           // MARK: - CannonBolt
            if imageAnchor.referenceImage.name == "cannonbolt-card"{
                
                if let benScene = SCNScene(named: "art.scnassets/cannonbolt.scn"){
                    if let benNode = benScene.rootNode.childNodes.first{

                        benNode.eulerAngles.x = .pi / 2
                      

                        planeNode.addChildNode(benNode)
                        haptic.haptiFeedback1()
                    }
                }

            }
            
            // MARK: - FourArms
            if imageAnchor.referenceImage.name == "fourarms-card"{
                
                if let benScene = SCNScene(named: "art.scnassets/fourarms.scn"){
                    if let benNode = benScene.rootNode.childNodes.first{

                        benNode.eulerAngles.x = .pi / 2
                      
                        planeNode.addChildNode(benNode)
                        haptic.haptiFeedback1()
                    }
                }

            }
            // MARK: - GhostFreak
            if imageAnchor.referenceImage.name == "ghostfreak-card"{
                
                if let benScene = SCNScene(named: "art.scnassets/ghostfreak.scn"){
                    if let benNode = benScene.rootNode.childNodes.first{

                        benNode.eulerAngles.x = .pi / 2
                        benNode.position.z = 0.05
                        planeNode.addChildNode(benNode)
                        haptic.haptiFeedback1()
                    }
                }

            }
            // MARK: - greymatter
            if imageAnchor.referenceImage.name == "greymatter-card"{
                
                if let benScene = SCNScene(named: "art.scnassets/greymatter.scn"){
                    if let benNode = benScene.rootNode.childNodes.first{

                        benNode.eulerAngles.x = .pi / 2
                      
                        planeNode.addChildNode(benNode)
                        haptic.haptiFeedback1()
                    }
                }

            }
         
            // MARK: - swampfire
            if imageAnchor.referenceImage.name == "swampfire-card"{
                
                if let benScene = SCNScene(named: "art.scnassets/swampfire.scn"){
                    if let benNode = benScene.rootNode.childNodes.first{

                        benNode.eulerAngles.x = .pi / 2
                      
                        planeNode.addChildNode(benNode)
                        haptic.haptiFeedback1()
                    }
                }

            }
            
            // MARK: - upgrade
            if imageAnchor.referenceImage.name == "upgrade-card"{
                
                if let benScene = SCNScene(named: "art.scnassets/upgrade.scn"){
                    if let benNode = benScene.rootNode.childNodes.first{

                        benNode.eulerAngles.x = .pi / 2
                        benNode.position.z = 0.1
                        planeNode.addChildNode(benNode)
                        haptic.haptiFeedback1()
                    }
                }

            }
            // MARK: - vilgax
            if imageAnchor.referenceImage.name == "vilgax-card"{
                
                if let benScene = SCNScene(named: "art.scnassets/vilgax.scn"){
                    if let benNode = benScene.rootNode.childNodes.first{

                        benNode.eulerAngles.x = .pi / 2
                      
                        planeNode.addChildNode(benNode)
                        haptic.haptiFeedback1()
                    }
                }

            }
            // MARK: - xlr8
            if imageAnchor.referenceImage.name == "xlr8-card"{
                
                if let benScene = SCNScene(named: "art.scnassets/xlr8.scn"){
                    if let benNode = benScene.rootNode.childNodes.first{


                        benNode.position.z = 0.05
                      
                        planeNode.addChildNode(benNode)
                        haptic.haptiFeedback1()
                    }
                }

            }
            
        
        }
        
        return node
    }
}
