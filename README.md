# finkex

Provides a [CrashDump.io](http://crashdump.io) logging backend for Elixir's Logger.

*If you use other logging libraries like SASL, Lager, etc checkout the [fink-erlang](https://github.com/crashdumpio/fink-erlang) library instead.*


## Installation

* Add `finkex` to your list of dependencies in `mix.exs`

    ```
    defp deps do
      [{:finkex, github: "crashdumpio/fink-elixir"}]
    end
    ```

* Add `:finkex` to the list of applications to start in `mix.exs`

    ```
    def application do
      [ applications: [:finkex] ]
    end
    ```

* Get dependencies by running `mix deps.get`


* Configure fink in `config/config.exs`

    ```
    config :finkex, [public_key: "api_public_key",
                     secret_key: "api_secret_key",
                     project:    "crashdump_project_name"]
    ```


* Add `:finkex` as Elixir Logger's backend in your `config/config.exs`

    ```
    config :logger, backends: [:console, :finkex]
    ```

    The above line will log to CrashDump.io, along with the logging to the console as usual.


## Usage

All your logs sent to Elixir's Logger, can be viewed on [CrashDump.io](http://crashdump.io)
