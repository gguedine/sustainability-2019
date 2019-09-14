<?php


namespace Twilio;


class VersionInfo {
    const MAJOR = 5;
    const MINOR = 15;
    const PATCH = 4;

    public static function string() {
        return implode('.', array(self::MAJOR, self::MINOR, self::PATCH));
    }
}
