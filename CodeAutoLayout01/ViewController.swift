//
//  ViewController.swift
//  CodeAutoLayout01
//
//  Created by 田山　由理 on 2016/07/17.
//  Copyright © 2016年 Yuri Tayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	//viewのプロパティを用意
	let greenView = UIView(frame: CGRectZero)
	let blueView  = UIView(frame: CGRectZero)
	
	//【!!注意!!】コードからAuto Layoutを設定する場合はviewを設置してから制約を設定する
	//otherwise, [The view hierarchy is not prepared for the constraint:]エラーでアプリがクラッシュする
	override func viewDidLoad() {
		super.viewDidLoad()
		
		greenView.backgroundColor = UIColor.greenColor()
		greenView.translatesAutoresizingMaskIntoConstraints = false
		
		blueView.backgroundColor = UIColor.blueColor()
		blueView.translatesAutoresizingMaskIntoConstraints = false
		
		self.view.addSubview(greenView)
		self.view.addSubview(blueView)
		
		makeConstraints()
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

	func makeConstraints() {
		
		let greenViewTopConstraints = NSLayoutConstraint(
			item: greenView,                   //制約を設定するview
		    attribute: NSLayoutAttribute.Top,  //制約を設定する属性
		    relatedBy: NSLayoutRelation.Equal, //制約を設定する要素の関係性
			toItem: self.view,                 //基準となる要素
		    attribute: NSLayoutAttribute.Top,  //基準となる要素の制約を設定する属性
			multiplier: 1.0,                   //制約の属性
		    constant: 88)                      //制約で追加する値
		
			/*
			//  上記の設定は以下の計算式と同じ
			//  greenView.Top = self.view.Top * 1.0 + 88
			//  
			//  親viewのTopの値に1.0をかけて88を加算している
			//  =親viewの88pc下に子viewのTopが設定されている
			*/
		
		self.view.addConstraint(greenViewTopConstraints)
		
		let greenViewLeadingConstraint = NSLayoutConstraint(
			item: greenView,
			attribute: NSLayoutAttribute.Leading,
		    relatedBy: NSLayoutRelation.Equal,
		    toItem: self.view,
		    attribute: NSLayoutAttribute.Leading,
		    multiplier: 1.0,
			constant: 10)
			//greenView.Leading =self.view.Leading * 1.0 + 10
		
		self.view.addConstraint(greenViewLeadingConstraint)
		
		let greenViewBottonConstraint = NSLayoutConstraint(
			item: greenView,
		    attribute: NSLayoutAttribute.Bottom,
		    relatedBy: NSLayoutRelation.Equal,
		    toItem: self.view,
		    attribute: NSLayoutAttribute.Bottom,
		    multiplier: 1.0,
		    constant: -20)
			//greenView.Bootom = self.view.Bottom * 1.0 -20
		
		self.view.addConstraint(greenViewBottonConstraint)
		
		let greenViewWidthConstraint = NSLayoutConstraint(
			item: greenView,
			attribute: NSLayoutAttribute.Width,
		    relatedBy: NSLayoutRelation.Equal,
		    toItem: self.view,
		    attribute: NSLayoutAttribute.Width,
		    multiplier: 0.4,
		    constant: 0)
			//greenView.Width = self.view.Width * 0.4 + 0
		
		self.view.addConstraint(greenViewWidthConstraint)
		
		let blueTopConstraint = NSLayoutConstraint(item: blueView,
		                                           attribute: NSLayoutAttribute.Top,
		                                           relatedBy: NSLayoutRelation.Equal,
		                                           toItem: self.view,
		                                           attribute: NSLayoutAttribute.Top,
		                                           multiplier: 1.0,
		                                           constant: 88)
		self.view.addConstraint(blueTopConstraint)
		
		let blueTrailingConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Trailing,
		                                                relatedBy: NSLayoutRelation.Equal,
		                                                toItem: self.view,
		                                                attribute: NSLayoutAttribute.Trailing,
		                                                multiplier: 1.0,
		                                                constant: -10)
		self.view.addConstraint(blueTrailingConstraint)
		
		let blueWidthConstraint = NSLayoutConstraint(item: blueView,
		                                             attribute: NSLayoutAttribute.Width,
		                                             relatedBy: NSLayoutRelation.Equal,
		                                             toItem: greenView,
		                                             attribute: NSLayoutAttribute.Width,
		                                             multiplier: 1.0,
		                                             constant: 0)
		self.view.addConstraint(blueWidthConstraint)
		
		let blueBottonConstraint = NSLayoutConstraint(item: blueView,
		                                              attribute:	NSLayoutAttribute.Bottom,
		                                              relatedBy: NSLayoutRelation.Equal,
		                                              toItem: self.view,
		                                              attribute: NSLayoutAttribute.Bottom,
		                                              multiplier: 1.0,
		                                              constant: -20)
		
		
		self.view.addConstraint(blueBottonConstraint)
	}

}

