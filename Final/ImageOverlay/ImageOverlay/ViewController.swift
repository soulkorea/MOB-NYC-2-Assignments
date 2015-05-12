import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
   @IBOutlet weak var imageView: UIImageView!
//    var newMedia: Bool?
//    
//    func noCamera(){
//        let alertVC = UIAlertController(title: "No Camera", message: "Sorry, this device has no camera", preferredStyle: .Alert)
//        let okAction = UIAlertAction(title: "OK", style:.Default, handler: nil)
//        alertVC.addAction(okAction)
//        presentViewController(alertVC, animated: true, completion: nil)
//    }
//    
//    @IBAction func useCamera(sender: UIButton) {
//        if UIImagePickerController.isSourceTypeAvailable(
//            UIImagePickerControllerSourceType.Camera) {
//                
//                let imagePicker = UIImagePickerController()
//                
//                imagePicker.delegate = self
//                imagePicker.sourceType =
//                    UIImagePickerControllerSourceType.Camera
//                imagePicker.mediaTypes = [kUTTypeImage as NSString]
//                imagePicker.allowsEditing = false
//                
//                self.presentViewController(imagePicker, animated: true,
//                    completion: nil)
//                newMedia = true
//        }
//    }
    
//    @IBAction func photoFromLibrary(sender: UIButton) {
//        if UIImagePickerController.isSourceTypeAvailable(
//            UIImagePickerControllerSourceType.SavedPhotosAlbum) {
//                let imagePicker = UIImagePickerController()
//                
//                imagePicker.delegate = self
//                imagePicker.sourceType =
//                    UIImagePickerControllerSourceType.PhotoLibrary
//                imagePicker.mediaTypes = [kUTTypeImage as NSString]
//                imagePicker.allowsEditing = false
//                self.presentViewController(imagePicker, animated: true,
//                    completion: nil)
//                newMedia = false
//        }
//    }
    
    
    
      let globalOverlayImageView = UIImageView(image: UIImage(named: "round_spotlight.png")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonClicked(sender: UIButton) {
        println(sender.titleLabel?.text!)
        
//        let image = UIImage(named: "\(sender.titleLabel!.text!).png")
//        
//        let overlayImageView = UIImageView(image: image!)
        
//        imageView.addSubview(globalOverlayImageView)
        
        globalOverlayImageView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        globalOverlayImageView.sizeToFit()
        
        scrollView.contentSize = globalOverlayImageView.frame.size
        scrollView.addSubview(globalOverlayImageView)
        scrollView.delegate = self
    }
    
//    @IBAction func tapped(sender: UITapGestureRecognizer) {
////        if sender.state == UIGestureRecognizerState.Ended {
////        let image = UIImage(named: "round_spotlight.png")
////        
////        let overlayImageView = UIImageView(image: image!)
////        
////        imageView.addSubview(overlayImageView)
////            
//////            overlayImageView.frame = CGRect(origin: sender.locationInView(imageView), size: image!.size)
////
////
////        overlayImageView.center = sender.locationInView(imageView)
////        }
//    }
    
    
//    @IBAction func dragged(sender: UIPanGestureRecognizer) {
//        switch sender.state {
//        case .Began:
//            imageView.addSubview(globalOverlayImageView)
//            globalOverlayImageView.center = sender.locationInView(imageView)
//        case .Changed:
//            globalOverlayImageView.center = sender.locationInView(imageView)
//        default:
//            println("at least one executable statement")
//        }
//        
//    }
  
    
    @IBAction func opacitySlider(sender: UISlider) {
        
        let sliderFloat = sender.value
        let cgfloat = CGFloat(sliderFloat)
        
        globalOverlayImageView.alpha = cgfloat
        
        
    }
    
    
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return globalOverlayImageView
    }

}


