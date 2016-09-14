import UIKit
//ビューコントローラを継承し、TextFieldDelegateを指定
class AddBlogViewController: UIViewController, UITextFieldDelegate {
    private var titleTextField: UITextField!
    private var contentTextField: UITextField!
    let sendbtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField = UITextField(frame: CGRectMake(0,0,200,30))
        // 表示する文字を代入する.
        titleTextField.text = ""
        // Delegateを設定する.
        titleTextField.delegate = self
        // 枠を表示する.
        titleTextField.borderStyle = UITextBorderStyle.RoundedRect
        self.view.addSubview(titleTextField)
        // UITextFieldの表示する位置を設定する.
        titleTextField.layer.position = CGPoint(x:self.view.bounds.width/2, y:85)
        contentTextField = UITextField(frame: CGRectMake(0,0,200,30))
        contentTextField.text = ""
        contentTextField.borderStyle = UITextBorderStyle.RoundedRect
        contentTextField.layer.position = CGPoint(x:self.view.bounds.width/2, y:120)
        self.view.addSubview(contentTextField)
        sendbtn.setTitle("投稿", forState: .Normal)
        sendbtn.setTitleColor(UIColor.blueColor(), forState: .Normal)
        sendbtn.frame = CGRectMake(0,0,150,25)
        sendbtn.layer.position = CGPoint(x: self.view.frame.width/2, y:185)
        sendbtn.backgroundColor = UIColor(red: 0.7, green: 0.2, blue: 0.2, alpha: 0.2)
        sendbtn.layer.borderWidth = 1
        sendbtn.addTarget(self, action: #selector(AddBlogViewController.sendtaped), forControlEvents: .TouchUpInside)
        self.view.addSubview(sendbtn)
    }
    func sendtaped(){
        let blog = Blog(title: titleTextField.text!,content: contentTextField.text!)
        BlogManager.postBlog(blog)
        performSegueWithIdentifier("toCompletion",sender: nil)
    }

}