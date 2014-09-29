data <- read.csv("erp.csv")
names(data)
library(ggplot2)

p1 <- ggplot(data, aes(latency, color = "Stimulus")) + 
    geom_line(aes(y = CC_LEFT, color = "CC"), alpha = 3/5, size = 3) +
    geom_line(aes(y = CF_LEFT, color = "CF"), alpha = 3/5, size = 3) +
    geom_line(aes(y = FC_LEFT, color = "FC"), alpha = 3/5, size = 3) +
    geom_line(aes(y = FF_LEFT, color = "FF"), alpha = 3/5, size = 3) +
    geom_line(aes(y = HC_LEFT, color = "HC"), alpha = 3/5, size = 3) +
    geom_line(aes(y = HF_LEFT, color = "HF"), alpha = 3/5, size = 3) +
    scale_colour_manual(values=c("aquamarine3", "yellow", 
                                 "royalblue2", "darkorchid2", 
                                 "gray3", "maroon2")) +
    labs(title = "Left Hemisphere", x = "Latency(ms)",  
         y = "Amplitude(μV)") +
    coord_cartesian(ylim = c(-10, 6)) +
    scale_y_reverse(breaks = seq(-10, 6, 2)) + 
    coord_cartesian(ylim = c(-10, 6)) +
    geom_hline(yintercept = 0, size = 1.2) + 
    geom_vline(xintercept = 0, size = 1.2) +
    theme_bw(base_family = "Avenir", base_size = 18) + 
    labs(colour = "")

#dev.copy(png, file = "1l.png", width = 800, height = 600)
#dev.off()


p2 <- ggplot(data, aes(latency, color = "Stimulus")) + 
    geom_line(aes(y = CC_RIGHT, color = "CC"), alpha = 3/5, size = 3) +
    geom_line(aes(y = CF_RIGHT, color = "CF"), alpha = 3/5, size = 3) +
    geom_line(aes(y = FC_RIGHT, color = "FC"), alpha = 3/5, size = 3) +
    geom_line(aes(y = FF_RIGHT, color = "FF"), alpha = 3/5, size = 3) +
    geom_line(aes(y = HC_RIGHT, color = "HC"), alpha = 3/5, size = 3) +
    geom_line(aes(y = HF_RIGHT, color = "HF"), alpha = 3/5, size = 3) +
    scale_colour_manual(values=c("aquamarine3", "yellow", 
                                 "royalblue2", "darkorchid2", 
                                 "gray3", "maroon2")) +
    labs(title = "Right Hemisphere", x = "Latency(ms)", 
         y = "Amplitude(μV)") +
    coord_cartesian(ylim = c(-10, 6)) +
    scale_y_reverse(breaks = seq(-10, 6, 2)) + 
    coord_cartesian(ylim = c(-10, 6)) +
    geom_hline(yintercept = 0, size = 1.2) + 
    geom_vline(xintercept = 0, size = 1.2) +
    theme_bw(base_family = "Avenir", base_size = 18) + 
    labs(colour = "") 

#dev.copy(png, file = "1r.png", width = 800, height = 600)
#dev.off()


p3 <- ggplot(data, aes(latency, color = "Stimulus")) + 
    geom_line(aes(y = FF_LEFT, color = "FF"), alpha = 3/5, size = 3) +
    geom_line(aes(y = HF_LEFT, color = "HF"), alpha = 3/5, size = 3) +
    geom_line(aes(y = EE_LEFT, color = "EE"), alpha = 3/5, size = 3) +
    geom_line(aes(y = EF_LEFT, color = "EF"), alpha = 3/5, size = 3) +
    geom_line(aes(y = FE_LEFT, color = "FE"), alpha = 3/5, size = 3) +
    geom_line(aes(y = HE_LEFT, color = "HE"), alpha = 3/5, size = 3) +
    scale_colour_manual(values=c("aquamarine3", "yellow", 
                                 "royalblue2", "darkorchid2", 
                                 "gray3", "maroon2")) +
    labs(title = "Left Hemisphere", x = "Latency(ms)",  
         y = "Amplitude(μV)") +
    scale_y_reverse(breaks = seq(-10, 6, 2)) + 
    coord_cartesian(ylim = c(-10, 6)) +
    geom_hline(yintercept = 0, size = 1.2) + 
    geom_vline(xintercept = 0, size = 1.2) +
    theme_bw(base_family = "Avenir", base_size = 18) + 
    labs(colour = "") 

#dev.copy(png, file = "2l.png", width = 800, height = 600)
#dev.off()


p4 <- ggplot(data, aes(latency, color = "Stimulus")) + 
    geom_line(aes(y = FF_RIGHT, color = "FF"), alpha = 3/5, size = 3) +
    geom_line(aes(y = HF_RIGHT, color = "HF"), alpha = 3/5, size = 3) +
    geom_line(aes(y = EE_RIGHT, color = "EE"), alpha = 3/5, size = 3) +
    geom_line(aes(y = EF_RIGHT, color = "EF"), alpha = 3/5, size = 3) +
    geom_line(aes(y = FE_RIGHT, color = "FE"), alpha = 3/5, size = 3) +
    geom_line(aes(y = HE_RIGHT, color = "HE"), alpha = 3/5, size = 3) +
    scale_colour_manual(values=c("aquamarine3", "yellow", 
                                 "royalblue2", "darkorchid2", 
                                 "gray3", "maroon2")) +
    labs(title = "Right Hemisphere", x = "Latency(ms)", 
         y = "Amplitude(μV)") +
    coord_cartesian(ylim = c(-10, 6)) +
    scale_y_reverse(breaks = seq(-10, 6, 2)) + 
    coord_cartesian(ylim = c(-10, 6)) +
    geom_hline(yintercept = 0, size = 1.2) + 
    geom_vline(xintercept = 0, size = 1.2) +
    theme_bw(base_family = "Avenir", base_size = 18) + 
    labs(colour = "") 

library(gridExtra)
grid.arrange(p1, p2, p3, p4, ncol = 2, nrow = 2)

dev.copy(png, file = "4 wave plots.png", width = 1600, height = 1200)
dev.off()