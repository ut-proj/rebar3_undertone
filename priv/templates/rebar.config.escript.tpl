{erl_opts, [no_debug_info]}.

{deps, [
    {lfe, {git, "http://github.com/rvirding/lfe", {branch, "develop"}}}
]}.

{plugins, [
    {rebar3_lfe, {git, "http://github.com/lfe-rebar3/rebar3_lfe", {branch, "master"}}}
]}.

{escript_incl_apps, [lfe, '{{name}}']}.
{escript_main_app, '{{name}}'}.
{escript_name, '{{name}}'}.
{escript_emu_args, "%%! +sbtu +A1\n"}.

{provider_hooks, [
    {pre, [{compile, {lfe, compile}}]}
]}.

{xref_checks,[
    undefined_function_calls,undefined_functions,locals_not_used,
    deprecated_function_calls,deprecated_functions
]}.

%% Profiles
{profiles, [
    {test, [
        {deps, [
            {proper, {git, "https://github.com/proper-testing/proper", {tag, "v1.3"}}},
            {ltest, {git, "https://github.com/lfex/ltest", {branch, "master"}}}
        ]},
        {plugins, [
            {rebar3_proper, {git, "https://github.com/ferd/rebar3_proper", {tag, "0.12.0"}}}
        ]},
        {eunit_opts, [verbose]},
        {erl_opts, [
            debug_info
            {src_dirs, ["src", "test"]}
        ]}
    ]}
]}.

{alias, [
    {coverage, [
        {proper, "-c"},
        {cover, "-v --min_coverage=80"}
    ]},
    {check, [
        xref,
        %% dialyzer,
        {lfe, ltest},
        {proper, "--regressions"},
        %% {ct, "-c"},
        coverage
    ]}
]}.