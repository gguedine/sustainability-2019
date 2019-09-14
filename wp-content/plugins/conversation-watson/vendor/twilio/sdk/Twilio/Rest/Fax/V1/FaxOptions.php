<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\Fax\V1;

use Twilio\Options;
use Twilio\Values;

/**
 * PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
 */
abstract class FaxOptions {
    /**
     * @param string $from Include only faxes sent from
     * @param string $to Include only faxes sent to
     * @param \DateTime $dateCreatedOnOrBefore Include only faxes created on or
     *                                         before
     * @param \DateTime $dateCreatedAfter Include only faxes created after
     * @return ReadFaxOptions Options builder
     */
    public static function read($from = Values::NONE, $to = Values::NONE, $dateCreatedOnOrBefore = Values::NONE, $dateCreatedAfter = Values::NONE) {
        return new ReadFaxOptions($from, $to, $dateCreatedOnOrBefore, $dateCreatedAfter);
    }

    /**
     * @param string $quality The quality of this fax
     * @param string $statusCallback URL for fax status callbacks
     * @param string $from Twilio number from which to originate the fax
     * @param string $sipAuthUsername Username for SIP authentication
     * @param string $sipAuthPassword Password for SIP authentication
     * @param boolean $storeMedia Whether or not to store media
     * @return CreateFaxOptions Options builder
     */
    public static function create($quality = Values::NONE, $statusCallback = Values::NONE, $from = Values::NONE, $sipAuthUsername = Values::NONE, $sipAuthPassword = Values::NONE, $storeMedia = Values::NONE) {
        return new CreateFaxOptions($quality, $statusCallback, $from, $sipAuthUsername, $sipAuthPassword, $storeMedia);
    }

    /**
     * @param string $status The updated status of this fax
     * @return UpdateFaxOptions Options builder
     */
    public static function update($status = Values::NONE) {
        return new UpdateFaxOptions($status);
    }
}

class ReadFaxOptions extends Options {
    /**
     * @param string $from Include only faxes sent from
     * @param string $to Include only faxes sent to
     * @param \DateTime $dateCreatedOnOrBefore Include only faxes created on or
     *                                         before
     * @param \DateTime $dateCreatedAfter Include only faxes created after
     */
    public function __construct($from = Values::NONE, $to = Values::NONE, $dateCreatedOnOrBefore = Values::NONE, $dateCreatedAfter = Values::NONE) {
        $this->options['from'] = $from;
        $this->options['to'] = $to;
        $this->options['dateCreatedOnOrBefore'] = $dateCreatedOnOrBefore;
        $this->options['dateCreatedAfter'] = $dateCreatedAfter;
    }

    /**
     * Filters the returned list to only include faxes sent from the supplied number, given in E.164 format.
     * 
     * @param string $from Include only faxes sent from
     * @return $this Fluent Builder
     */
    public function setFrom($from) {
        $this->options['from'] = $from;
        return $this;
    }

    /**
     * Filters the returned list to only include faxes sent to the supplied number, given in E.164 format.
     * 
     * @param string $to Include only faxes sent to
     * @return $this Fluent Builder
     */
    public function setTo($to) {
        $this->options['to'] = $to;
        return $this;
    }

    /**
     * Filters the returned list to only include faxes created on or before the supplied date, given in ISO 8601 format.
     * 
     * @param \DateTime $dateCreatedOnOrBefore Include only faxes created on or
     *                                         before
     * @return $this Fluent Builder
     */
    public function setDateCreatedOnOrBefore($dateCreatedOnOrBefore) {
        $this->options['dateCreatedOnOrBefore'] = $dateCreatedOnOrBefore;
        return $this;
    }

    /**
     * Filters the returned list to only include faxes created after the supplied date, given in ISO 8601 format.
     * 
     * @param \DateTime $dateCreatedAfter Include only faxes created after
     * @return $this Fluent Builder
     */
    public function setDateCreatedAfter($dateCreatedAfter) {
        $this->options['dateCreatedAfter'] = $dateCreatedAfter;
        return $this;
    }

    /**
     * Provide a friendly representation
     * 
     * @return string Machine friendly representation
     */
    public function __toString() {
        $options = array();
        foreach ($this->options as $key => $value) {
            if ($value != Values::NONE) {
                $options[] = "$key=$value";
            }
        }
        return '[Twilio.Fax.V1.ReadFaxOptions ' . implode(' ', $options) . ']';
    }
}

class CreateFaxOptions extends Options {
    /**
     * @param string $quality The quality of this fax
     * @param string $statusCallback URL for fax status callbacks
     * @param string $from Twilio number from which to originate the fax
     * @param string $sipAuthUsername Username for SIP authentication
     * @param string $sipAuthPassword Password for SIP authentication
     * @param boolean $storeMedia Whether or not to store media
     */
    public function __construct($quality = Values::NONE, $statusCallback = Values::NONE, $from = Values::NONE, $sipAuthUsername = Values::NONE, $sipAuthPassword = Values::NONE, $storeMedia = Values::NONE) {
        $this->options['quality'] = $quality;
        $this->options['statusCallback'] = $statusCallback;
        $this->options['from'] = $from;
        $this->options['sipAuthUsername'] = $sipAuthUsername;
        $this->options['sipAuthPassword'] = $sipAuthPassword;
        $this->options['storeMedia'] = $storeMedia;
    }

    /**
     * The quality setting to use for this fax. One of `standard`, `fine` or `superfine`.
     * 
     * @param string $quality The quality of this fax
     * @return $this Fluent Builder
     */
    public function setQuality($quality) {
        $this->options['quality'] = $quality;
        return $this;
    }

    /**
     * The URL that Twilio will request when the status of the fax changes.
     * 
     * @param string $statusCallback URL for fax status callbacks
     * @return $this Fluent Builder
     */
    public function setStatusCallback($statusCallback) {
        $this->options['statusCallback'] = $statusCallback;
        return $this;
    }

    /**
     * The phone number to use as the caller id, E.164-formatted. If using a phone number, it must be a Twilio number or a verified outgoing caller id for your account. If sending to a SIP address, this can be any alphanumeric string (plus the characters `+`, `_`, `.`, and `-`) to use in the From header of the SIP request.
     * 
     * @param string $from Twilio number from which to originate the fax
     * @return $this Fluent Builder
     */
    public function setFrom($from) {
        $this->options['from'] = $from;
        return $this;
    }

    /**
     * The username to use for authentication when sending to a SIP address.
     * 
     * @param string $sipAuthUsername Username for SIP authentication
     * @return $this Fluent Builder
     */
    public function setSipAuthUsername($sipAuthUsername) {
        $this->options['sipAuthUsername'] = $sipAuthUsername;
        return $this;
    }

    /**
     * The password to use for authentication when sending to a SIP address.
     * 
     * @param string $sipAuthPassword Password for SIP authentication
     * @return $this Fluent Builder
     */
    public function setSipAuthPassword($sipAuthPassword) {
        $this->options['sipAuthPassword'] = $sipAuthPassword;
        return $this;
    }

    /**
     * Whether or not to store a copy of the sent media on Twilio's servers for later retrieval (defaults to `true`)
     * 
     * @param boolean $storeMedia Whether or not to store media
     * @return $this Fluent Builder
     */
    public function setStoreMedia($storeMedia) {
        $this->options['storeMedia'] = $storeMedia;
        return $this;
    }

    /**
     * Provide a friendly representation
     * 
     * @return string Machine friendly representation
     */
    public function __toString() {
        $options = array();
        foreach ($this->options as $key => $value) {
            if ($value != Values::NONE) {
                $options[] = "$key=$value";
            }
        }
        return '[Twilio.Fax.V1.CreateFaxOptions ' . implode(' ', $options) . ']';
    }
}

class UpdateFaxOptions extends Options {
    /**
     * @param string $status The updated status of this fax
     */
    public function __construct($status = Values::NONE) {
        $this->options['status'] = $status;
    }

    /**
     * The updated status of this fax. The only valid option is `canceled`. This may fail if the status has already started transmission.
     * 
     * @param string $status The updated status of this fax
     * @return $this Fluent Builder
     */
    public function setStatus($status) {
        $this->options['status'] = $status;
        return $this;
    }

    /**
     * Provide a friendly representation
     * 
     * @return string Machine friendly representation
     */
    public function __toString() {
        $options = array();
        foreach ($this->options as $key => $value) {
            if ($value != Values::NONE) {
                $options[] = "$key=$value";
            }
        }
        return '[Twilio.Fax.V1.UpdateFaxOptions ' . implode(' ', $options) . ']';
    }
}