# perso

- Personalausweis Generator Deutschland (Germany)

Einfach die 4 Felder nach Belieben anpassen. Auf die Authority wird meistenst nicht gecheckt, daher sollte auch ABCD funktionieren.
Falls nicht muss man sich einen validen Code raussuchen. Alles andere sollte selbsterklärend sein.

```
auth='ABCD'             # Authority
idn='12345'             # Random Number
b_date='010188'.reverse # Date of birth 01.01.1988
d_date='010125'.reverse # Due date 01.01.2025
```
