//
//  BaseNavigationController.swift
//  GoodNews
//
//  Created by Mingeun Yang on 2021/07/27.
//
import UIKit


class BaseNavigationController: UINavigationController {
  override func viewDidLoad() {
    super.viewDidLoad()
   navigationBar.prefersLargeTitles = true
  }
}
