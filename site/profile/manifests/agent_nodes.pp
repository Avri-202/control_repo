class profile::agent_nodes {
inculd dockeragent
dockeragent::node {'web.puppet.vm':}
dockeragent::node {'db.puppet.vm':}
}
