# perso

- Personalausweis Generator Deutschland (Germany)

Einfach die 4 Felder nach Belieben anpassen. Die Authority muss nicht valide sein um einen Test zu bestehen, daher sollte auch ABCD funktionieren.
Es sollte genug Quellen geben, die Authority nachzulesen (u.a. den eigenen Perso). Alles andere sollte selbsterklärend sein.
Zu reinen Darstellungszwecken und zum Testen!

```
auth='ABCD'                          # Authority
idn='12345'                          # Random Number
b_date=['01','01','88'].reverse.join # Date of birth 01.01.1988
d_date=['01','01','25'].reverse.join # Due date 01.01.2025
```
