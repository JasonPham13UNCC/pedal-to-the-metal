if(window_get_height() < y - 100) {
    instance_destroy();
}

if (self.x <= 160) {
    self.x = 200;
}

if (self.x >= 1180) {
    self.x = 1140;
}