resource random_integer name {
  min = 0
  max = 140

    lifecycle{
        #create_before_destroy = true Yeni oluşturulacağı zaman önce resource create eder sonrasında eski resource'i siler.
        #prevent_destroy = true Kaynağı silmeyi engeller.
        #ignore_changes=[min] Parametre olarak verilen attribute'in değişikliklerini görmez. Yani min parametresinde görülen bir değişiklik terraform plan yaptığında gözükmez.
    }
}
output name {
  value       = random_integer.name.result 
}
