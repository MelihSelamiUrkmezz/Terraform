# GCP Authentication Şekilleri

Belirli bir GCP accountunun üzerinde terraform ile işlem yapabilmek için hesabın veya kullanıcının gcp accountu ile bağlı olması gerekir.

1) Username-Password Authentication
2) Google Cloud Terminal(PS1=$)
3) Service Account Key

1) Kullanıcının ilgili resource'i oluşturabilmesi için yetkisinin bulunması gereklidir. 'gcloud auth application-default login' komutu ile locale indirilen SDK ile kimlik doğrulanır.
2) GCP üzerinde bulunan terminalle aslında 'PS1=$' komutu sayesinde bir linux terminal oluştururuz. Oluşturulan terminal ile ilgili HCL formatındaki terraform kodu buraya aktarılır ve direkt init,plan,apply adımlarıyla resource başarılı bir şekilde oluşturulur.
3) Oluşturulacak resource için yetkisi olan bir service account oluşturulur. Oluşturulan service accountun key çıktısı json olarak alınır. Devamında 'credentials='key_path'' şeklinde ilgili json keyin path'i verilerek yetkilendirme işlemi sağlanır.

