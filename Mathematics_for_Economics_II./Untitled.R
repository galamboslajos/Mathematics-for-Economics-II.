###### Mathematics for Economics II. ######
# In this script, the plots of the Carl P. Simon, Lawrence E. Blume - Mathematics for Economists-W. W. Norton & Company (1994) book are reproduced.

# Load necessary library
library(ggplot2)

###### Figure 1.1 ######
# Create a data frame with the commodity bundles
df <- data.frame(
  Bundle = c("Bundle1", "Bundle2"),
  x1 = c(2, 5),  # Quantity of commodity x1 in each bundle
  x2 = c(6, 3)   # Quantity of commodity x2 in each bundle
)

# Create the plot
p1 <- ggplot(df, aes(x = x1, y = x2, color = Bundle)) +
  geom_point(size = 3) +
  geom_segment(aes(x = 0, y = x2, xend = x1, yend = x2), linetype = "dashed") +
  geom_segment(aes(x = x1, y = 0, xend = x1, yend = x2), linetype = "dashed") +
  scale_color_manual(values = c("Bundle1" = "red", "Bundle2" = "green")) +
  labs(x = "Quantity of Commodity x1", y = "Quantity of Commodity x2",
       title = "Two Commodity Bundles in Commodity Space",
       color = "Bundle") +
  expand_limits(x = c(0, 8), y = c(0, 8)) +
  theme_minimal() +
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        panel.background = element_rect(fill = "white", colour = "black", size = 1, linetype = "solid"),
        axis.title = element_text(size = 12),
        plot.title = element_text(hjust = 0.5, size = 14),
        legend.position = "bottom")

# Print the plot
print(p1)

# Save the plot
ggsave("Commodity_Bundles.png", plot = p1, width = 6, height = 4, dpi = 300)


###### Figure 1.2 ######


