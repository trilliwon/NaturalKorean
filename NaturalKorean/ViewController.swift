//
//  ViewController.swift
//  NaturalKorean
//
//  Created by Won on 17/05/2017.
//  Copyright © 2017 Won. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var textView: UITextView!

	override func viewDidLoad() {
		super.viewDidLoad()

		textView.text = "\n\n==== String+JNaturalKorean ====\n\n"

		textView.text.append("주격조사\n\n")
		textView.text.append("\("그 사람".E_or_GA) 주인입니다.\n")
		textView.text.append("\("010-0000-7330".E_or_GA) 전 여친 전화번호 입니다..\n")
		textView.text.append("\("그 여자".E_or_GA) 전 여친 입니다.\n")

		textView.text.append("\n목적격조사\n\n")
		textView.text.append("\("3개의 문장".EUL_or_LEUL) 외워야 합니다.\n")
		textView.text.append("\("010-0000-7332".EUL_or_LEUL) 해킹.\n")
		textView.text.append("\("12개의 단어".EUL_or_LEUL) 외워야 합니다.\n")

		textView.text.append("\n보조사\n\n")
		textView.text.append("\("그 사람".EUN_or_NEUN) 프로그래머입니다.\n")
		textView.text.append("\("그 여자".EUN_or_NEUN) 이뻐요.\n")
		textView.text.append("\("010-0000-7335".EUN_or_NEUN) 내 전화번호 입니다..\n")

		textView.text.append("\n호격조사\n\n")
		textView.text.append("\("이 세상".A_or_YA)!\n")
		textView.text.append("\("이 세상".A_or_YA)!\n")
		textView.text.append("\("010-0000-7336".A_or_YA)!\n\n\n")

		textView.text.append("\("그 여자".WA_or_GUA) 함께\n")
		textView.text.append("\("그 사람".WA_or_GUA) 함께\n\n")
		textView.text.append("\("010-0000-7338".WA_or_GUA) 내 번호는 비슷함.\n\n\n")

		textView.text.append("\("010-0000-7333".EURO_or_RO) 인증번호가 발송됩니다.\n\n\n")

		textView.text.append("\("오늘".EURO_or_RO) 부터 \("100일".E_or_GA) 지났습니다.\n")
	}
}

