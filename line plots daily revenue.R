# Skrypt z przykładami kodów do liniowego wykresu żeby się nie zgubił 

View(super)
class(super)
super$Month <- factor(super$Month)

ggplot(super, aes(x = Date, y = Daily_Total_Revenue, color = Branch, group = Branch)) +
  geom_line(size = 0.5) + 
  facet_wrap(~Month, scales = "free_x") +  # Facetowanie według miesięcy
  labs(
    title = "Dzienne przychody w oddziałach (podział na miesiące)",
    x = "Data",
    y = "Dzienne przychody ($)",
    color = "Oddział"
  ) +
  scale_x_date(date_labels = "%m/%d", date_breaks = "1 week") +  # Ustawienie osi X (tygodniowe etykiety)
  theme_minimal() +  # Minimalistyczny styl
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),  # Pochylone etykiety osi X
    panel.spacing = unit(1, "lines"),  # Odstępy między panelami
    plot.title = element_text(hjust = 0.5, size = 16),  # Wyrównanie i rozmiar tytułu
    legend.position = "top")  # Pozycja legendy



ggplot(super, aes(x = Date, y = Daily_Total_Revenue, color = Branch, group = Branch)) +
  geom_line(size = 0.5) +  # Facetowanie według miesięcy
  labs(
    title = "Dzienne przychody w oddziałach (podział na miesiące)",
    x = "Data",
    y = "Dzienne przychody ($)",
    color = "Oddział"
  ) +
  scale_x_date(date_labels = "%m/%d", date_breaks = "1 week") +  # Ustawienie osi X (tygodniowe etykiety)
  theme_minimal() +  # Minimalistyczny styl
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),  # Pochylone etykiety osi X
    panel.spacing = unit(1, "lines"),  # Odstępy między panelami
    plot.title = element_text(hjust = 0.5, size = 16),  # Wyrównanie i rozmiar tytułu
    legend.position = "top")  # Pozycja legendy


ggplot(subset(super, Branch == "A"), aes(x = Date, y = Daily_Total_Revenue, color = Branch, group = Branch)) +
  geom_line(size = 0.5) + 
  facet_wrap(~Month, scales = "free_x") +  # Facetowanie według miesięcy
  labs(
    title = "Dzienne przychody w oddziale A (podział na miesiące)",
    x = "Data",
    y = "Dzienne przychody ($)",
    color = "Oddział"
  ) +
  scale_x_date(date_labels = "%m/%d", date_breaks = "1 week") +  # Ustawienie osi X (tygodniowe etykiety)
  theme_minimal() +  # Minimalistyczny styl
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),  # Pochylone etykiety osi X
    panel.spacing = unit(1, "lines"),  # Odstępy między panelami
    plot.title = element_text(hjust = 0.5, size = 16),  # Wyrównanie i rozmiar tytułu
    legend.position = "none"  # Ukrycie legendy, bo mamy tylko jeden oddział
  )


ggplot(subset(super, Branch == "A"), aes(x = Date, y = Daily_Total_Revenue, color = Branch, group = Branch)) +
  geom_line(size = 0.5) +  # Facetowanie według miesięcy
  labs(
    title = "Dzienne przychody w oddziale A (podział na miesiące)",
    x = "Data",
    y = "Dzienne przychody ($)",
    color = "Oddział"
  ) +
  scale_x_date(date_labels = "%m/%d", date_breaks = "1 week") +  # Ustawienie osi X (tygodniowe etykiety)
  theme_minimal() +  # Minimalistyczny styl
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),  # Pochylone etykiety osi X
    panel.spacing = unit(1, "lines"),  # Odstępy między panelami
    plot.title = element_text(hjust = 0.5, size = 16),  # Wyrównanie i rozmiar tytułu
    legend.position = "none"  # Ukrycie legendy, bo mamy tylko jeden oddział
  )
