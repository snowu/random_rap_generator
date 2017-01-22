general {
        colors = true
        color_good = "#00CC00"
        interval = 1
}

#order += "ipv6"
order += "volume master"
order += "disk /"
order += "disk /home/snow"
#order += "run_watch DHCP"
#order += "run_watch VPN"
order += "wireless wlan0"
order += "ethernet eth0"
order += "battery 0"
order += "cpu_temperature 0"
#order += "load"
order += "tztime local"
#order += "tztime server"

wireless wlan0 {
        format_up = "W: (%quality at %essid) %ip"
        format_down = "W: down"
}

ethernet eth0 {
        # if you use %speed, i3status requires root privileges
        format_up = "E: %ip (%speed)"
        format_down = "E: down"
}
battery 0 {
        format = "%status %percentage %remaining (%emptytime)"
        path = "/sys/class/power_supply/BAT0/uevent"
        low_threshold = "30"
        threshold_type = "time"
        last_full_capacity = "false"
        integer_battery_capacity = "true"
}

run_watch DHCP {
        pidfile = "/var/run/dhclient*.pid"
}

run_watch VPN {
      pidfile = "/var/run/vpnc/pid"
}

tztime local {
	format = "%d-%m-%Y %H:%M:%S"
}

tztime server {
	format = "%H:%M:%S"
  timezone = "Europe/England"
}

load {
	format = "%5min"
}

cpu_temperature 0 {
	format = "T: %degrees °C"
}

disk "/" {
	format = "%avail"

}

disk"/home/snow"{
  format = "%free"
}

volume master {
        format = "♪: %volume"
        device = "default"
        mixer = "Master"
        mixer_idx = 0
}
