//
//  MineMessageListViewModel.swift
//  GreenChatApp
//
//  Created by liuxu on 2025/9/14.
//

import UIKit
import EaseChatUIKit

class MineMessageListViewModel: MessageListViewModel {
    
    func inertAlertMessage() {
        if let alertMessage = self.constructMessage(text: "温馨提示: 请注意辨别信息真伪, 不要轻信陌生人", type: .alert) {
            ChatClient.shared().chatManager?.getConversationWithConvId(self.to)?.insert(alertMessage, error: nil)
            self.driver?.showMessage(message: alertMessage)
        }
    }

    override func messageDidReceived(message: ChatMessage) {
        self.inertAlertMessage()
        super.messageDidReceived(message: message)
    }
}
