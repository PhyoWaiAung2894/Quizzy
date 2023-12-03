//
//  ViewController.swift
//  Quizzy
//
//  Created by PhyoWai Aung on 12/2/23.
//
import UIKit

class ViewController: UIViewController {
    
    var categoryQuizz = CategoryBrain()
    
    let tableView: UITableView = {
        let table = UITableView(frame: CGRect.zero, style: .plain)
        table.backgroundColor = .black
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = .none
        table.separatorStyle = .singleLine
        table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Quizs"
        
        if let navigationBar = navigationController?.navigationBar {
            navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        }
        view.backgroundColor = .black
        configureTableView()
    }
    
    private func configureTableView() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryQuizz.categoryQuiz.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let category = categoryQuizz.categoryQuiz[indexPath.row]
        cell.textLabel?.text = category.title
        cell.textLabel?.textColor = UIColor.white
        cell.backgroundColor = UIColor.black
        cell.clipsToBounds = true
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 10
        cell.layer.borderColor = UIColor.white.cgColor
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = QuizViewController()
        vc.quizBrain.categorynumber = indexPath.row
        navigationController?.pushViewController(vc, animated: true)
    }
}
