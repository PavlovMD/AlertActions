//
//  ViewController.swift
//  AlertActions
//
//  Created by Maksim Pavlov on 29.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    fileprivate func windowAlert() {
        // создание окна с текстом
        let ac = UIAlertController(title: "Зарегистрированы?", message: "Введите ваш логин и пароль", preferredStyle: .alert)
        
        // создание двух кнопок ОК и ОТМЕНА
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Отмена", style: .destructive, handler: nil)
        let exitAction = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)
        
        // добавление кнопок в окно
        ac.addAction(okAction)
        ac.addAction(cancelAction)
        ac.addAction(exitAction)
        
        // добавление поля для ввода текста (логина)
        ac.addTextField { (usernameTF) in
            usernameTF.placeholder = "Введите логин"
        }
        // добавление поля для ввода текста (пароля)
        ac.addTextField { (userPasswordTF) in
            userPasswordTF.placeholder = "Введите пароль"
            userPasswordTF.isSecureTextEntry = true
        }
        // отображение окна на экране
        self.present(ac, animated: true, completion: nil)
    }
    
    fileprivate func windowActionSheet() {
        // создание окна с текстом
        let ac = UIAlertController(title: "Пошли пожрем?", message: "Что скажешь?", preferredStyle: .actionSheet)
        
        // создание кнопок
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Потом", style: .destructive, handler: nil)
        let exitAction = UIAlertAction(title: "Я на диете!", style: .cancel, handler: nil)
        
        // добавление кнопок в окно
        ac.addAction(okAction)
        ac.addAction(cancelAction)
        ac.addAction(exitAction)
        
        // отображение окна на экране
        self.present(ac, animated: true, completion: nil)
    }

    @IBAction func button1Action(_ sender: Any) {
        // вызов окна по нажатию кнопки
        windowAlert()
    }
    @IBAction func button2Action(_ sender: Any) {
        windowActionSheet()
    }
}

