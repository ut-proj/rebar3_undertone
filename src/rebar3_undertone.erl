-module(rebar3_undertone).

-export([init/1]).

-spec init(rebar_state:t()) -> {ok, rebar_state:t()}.
init(State) ->
  rebar_api:debug("Intializing rebar3_undertone plugin ...", []),
  Commands = [ fun rebar3_undertone_prv_repl:init/1
             ],
  FoldFun  = fun(F, {ok, StateAcc}) -> F(StateAcc) end,
  lists:foldl(FoldFun, {ok, State}, Commands).

%% Useful for debugging new plugins:
%%
%% {ok, State} = rebar3_lfe:init(rebar_state:new()).
%% rebar3_lfe_prv_ltest:do(State).
%% rebar_state:command_parsed_args(rebar_state:new()).
%% rebar_prv_eunit:eunit_opts(rebar_state:new()).
