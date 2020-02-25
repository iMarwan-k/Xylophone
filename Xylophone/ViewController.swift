import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(latter: sender.currentTitle!)
        sender.alpha = 0.5
        
        let secondsToDelay = 0.2
        DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
            sender.alpha = 1
        }
    }
    
    func playSound(latter: String) {
        let url = Bundle.main.url(forResource: latter, withExtension: "wav")
    
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
