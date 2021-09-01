class FriendListModel{
  bool isOnline=false;
  String friendsMobile="";//will use as chat id
  String friendsName="";
  String uniqueUserID = "";
  String fcmToken = "";
  FriendListModel(this.isOnline, this.friendsMobile, this.friendsName, this.fcmToken,this.uniqueUserID);
  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
      'isOnline': isOnline,
      'friendsMobile': friendsMobile,
      "friendsName":friendsName,
      "uniqueUserID":uniqueUserID,
      "fcmToken":fcmToken,
    };
}