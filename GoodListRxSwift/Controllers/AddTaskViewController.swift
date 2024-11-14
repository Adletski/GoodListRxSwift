//
//  AddTaskViewController.swift
//  GoodListRxSwift
//
//  Created by Adlet Zhantassov on 13.11.2024.
//

import UIKit
import RxSwift
import RxCocoa

final class AddTaskViewController: UIViewController {
    // MARK: - Properties
    private let taskSubject = PublishSubject<Task>()
    var taskSubjectObservable: Observable<Task> {
        return taskSubject.asObservable()
    }
    
    // MARK: - Outlets
    @IBOutlet weak var prioritySegmentControl: UISegmentedControl!
    @IBOutlet weak var inputTextField: UITextField!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Actions
    @IBAction func onSaveButtonDidTap(_ sender: Any) {
        guard let priority = Priority(rawValue: self.prioritySegmentControl.selectedSegmentIndex),
              let title = self.inputTextField.text else { return }
        
        let task = Task(title: title, priority: priority)
        taskSubject.onNext(task)
        self.dismiss(animated: true)
    }
}
