
    Add-Type -AssemblyName PresentationCore,PresentationFramework
    Add-Type -AssemblyName Microsoft.VisualBasic

    $a = [System.Windows.MessageBox]::Show("Welcome to the Guessing Game `n Do you want to play?","Guessing-Game","YesNo","Question")
    $u = [Microsoft.VisualBasic.Interaction]::InputBox('Enter Your Name', "Guessing-Game")
    
    while ($a -eq "yes") {
	
      $b = $null
      $d = Get-Random -Maximum 9 -Minimum 1
      while ($b -ne "NO") {
        
        [array]$c += [Microsoft.VisualBasic.Interaction]::InputBox('Enter the Number between 1 to 9', "Guessing-Game")
        if ($c -eq $d ) {

          [System.Windows.MessageBox]::Show("Hurray!!!! Here We have an Winner $u","Guessing-Game","OK","Exclamation")

        }
        elseif ($c -lt $d) {
  
            [System.Windows.MessageBox]::Show("OOOPS!!! Too Low Buddy","Guessing-Game","OK","Exclamation")
        }
        elseif ($c -gt $d) {
  
            [System.Windows.MessageBox]::Show("OOOPS!!! Too High Buddy","Guessing-Game","OK","Exclamation")

        }
        $b = [System.Windows.MessageBox]::Show("Try Again ?","Guessing-Game","YesNo","Question")
      }
        $a = [System.Windows.MessageBox]::Show("Do You want to Play","Guessing-Game","YesNo","Question")
    } 

    [System.Windows.MessageBox]::Show("Congrats $u have taken these game within $($c.Length) these guesses","Guessing-Game","OK","Exclamation")


