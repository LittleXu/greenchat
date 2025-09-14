//
//  EasemobBusinessApi.swift
//  GreenChatApp
//
//  Created by liuxu on 2025/9/14.
//

import Foundation
public enum EasemobBusinessApi {
    case login(Void)
    case deregister(String)
    case verificationCode(String)
    case refreshIMToken(Void)
    case autoDestroyGroup(String)
    case fetchGroupAvatar(String)
    case fetchRTCToken(String,String)
    case addFriendByPhoneNumber(String,String)
    case mirrorCallUserIdToChatUserId(String)
}
