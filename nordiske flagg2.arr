use context essentials2021
#Dette er en funksjon for de nordiske korsflaggene: Norge, Sverige, Danmark, Finland, Island og Færøyene.

#Funksjonen korsflagg blir her definert med topp, kors og bunn. Målene er til det norske flagget, men de er tilnærmet like til de andre nordiske flaggene. 
fun korsflagg(topp, kors, bunn):
  frame(
    overlay-xy(rectangle(220, 20, "solid", kors),
      0, -70,
      overlay-xy(rectangle(20, 160, "solid", kors),
        -70, 0,
        overlay-xy(square(60, "solid", topp),
          0, 0,
          overlay-xy(square(60, "solid", topp),
            0, -100,
            overlay-xy(rectangle(120, 60, "solid", topp),
              -100, -100,
              overlay-xy(rectangle(120, 60, "solid", topp),
                -100, 0,
                rectangle(220, 160, "solid", bunn)))))))) 
end

#Alt er rectangle med unntak av de to venstre delene av flagget som blir definert med square. Det ble feilkode om de sto som rectangle. 

Norge = korsflagg("red", "darkblue", "white")
Sverige = korsflagg("blue", "yellow", "yellow")
Finland = korsflagg("white", "darkblue", "darkblue")
Danmark = korsflagg("red", "white", "red")
Faeroeyene = korsflagg("white", "red", "blue")
Island = korsflagg("blue", "red", "white")

#Her er fargene til de ulike flaggene. 
#For å få frem riktig flagg er det bare å skrive navnet til landet i vinduet til høy
