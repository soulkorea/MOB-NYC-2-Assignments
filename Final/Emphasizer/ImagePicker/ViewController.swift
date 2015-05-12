import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
   
    let globalOverlayImageView = UIImageView(image: UIImage(named: "round_spotlight.png")!)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    @IBAction func overlayButtonPressed(sender: UIButton) {
        
        globalOverlayImageView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        globalOverlayImageView.sizeToFit()
        
        scrollView.contentSize = globalOverlayImageView.frame.size
        scrollView.addSubview(globalOverlayImageView)
        scrollView.delegate = self
    }

    
    @IBAction func opacitySlider(sender: UISlider) {
        let sliderFloat = sender.value
        let cgfloat = CGFloat(sliderFloat)
        globalOverlayImageView.alpha = cgfloat
    }
    
    let imagePicker = UIImagePickerController()

    @IBAction func loadImageTapped(sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    
    @IBAction func saveImageTapped(sender: UIButton) {
//        UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, 0.0)
//        scrollView.layer.renderInContext(UIGraphicsGetCurrentContext())
//        let img = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        
//        UIImageWriteToSavedPhotosAlbum(img, nil, nil, nil);

        
// this code below takes a screenshot
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.renderInContext(UIGraphicsGetCurrentContext())
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
         UIImageWriteToSavedPhotosAlbum(img, nil, nil, nil);
        
    }
    
    
    @IBAction func saveImageTappedAlert (sender: UIButton) {
        var alert = UIAlertController(title: "EMPHASIZER", message: "Image saved!", preferredStyle: .Alert)

        
        let cancel = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Cancel) { (action) -> Void in

        }
        
        
        alert.addAction(cancel)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    

    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.contentMode = .ScaleAspectFit
            imageView.image = pickedImage
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return globalOverlayImageView
    }

    

}

