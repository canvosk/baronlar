import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US' : {
      'messenger':'Messenger',
      'welcome':'Welcome.',
      'login':'Login',
      'dont_acc':"Don't have an account?",
      'register': "Register",
      'name':'Name',
      'surname':'Surname',
      'email':'E-Mail',
      'username':'Username',
      'password':'Password',
      'repassword':'Re-Password',
      'contacts':'Contacts',
      'chats':'Chats',
      'profile':'Profile',
    },
    'tr_TR':{
      'messenger':'Mesajlaşma',
      'welcome':'Hoşgeldiniz.',
      'login':'Giriş Yap',
      'dont_acc':"Hesabınız yok mu?",
      'register': "Kayıt Ol",
      'name':'Ad',
      'surname':'Soyad',
      'email':'E-Posta',
      'username':'Kullanıcı Adı',
      'password':'Şifre',
      'repassword':'Şifre Tekrarı',
      'contacts':'Kişilerim',
      'chats':'Mesajlar',
      'profile':'Profil',
    },
  };
}
