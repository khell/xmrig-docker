xmrig-docker
============

Docker image for the `xmrig` Monero CPU miner. `xmrig` is built directly from master branch on its public Github repository with all defaults, except devfee which will now default to 0%. You can still opt-in to the devfee from the configuration file.

### Usage
This image is built expecting a JSON configuration file to be available at `$XMRIG_JSON_CONFIG_PATH`. For example, you can mount a volume at `/app/etc` that contains a configuration file named `config.json`, and then run the following command:

```sh
docker run -t -i -d -v /path/to/config:/app/etc -e XMRIG_JSON_CONFIG_PATH=/app/etc/config.json xmrig-docker
```

### Donations
If this image helped you mine Monero, please feel free to send a donation my way!

* XMR: `43FtckLEn9BSWP6msnrRNpcZUWVGrr47WBZ7PSHcyF44HFhaRoLmRZK4kx7TFh3Ryh6r3faNiQxNQT6BL1AuiZoEDrNsuum`
* BTC: `1PraPEpVzcPC6DmSXjuJgeETsmP9KkuJ6U`
* BCH: `1Ny1MEHsRW7K987GEDRacfb5BM9M1RTEVq`
 
