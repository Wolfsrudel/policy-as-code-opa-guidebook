package example.urlhierarchy

test_admin_allowed {
    allowed with input as {
        "user": {
            "role" : "ADMIN"
        },
        "api": {
            "url" : "/users/{user_id}/profile",
            "method" : "GET"
        }
    }
}

test_oper1_profile_read_allowed {
    allowed with input as {
        "user": {
            "role" : "OPERATOR",
            "id" : "oper1"
        },
        "api": {
            "url" : "/users/{user_id}/profile",
            "method" : "GET"
        }
    }
}

test_oper1_profile_update_allowed {
    allowed with input as {
        "user": {
            "role" : "OPERATOR",
            "id" : "oper1"
        },
        "api": {
            "url" : "/users/{user_id}/profile",
            "method" : "PUT"
        }
    }
}

test_oper2_profile_read_allowed {
    allowed with input as {
        "user": {
            "role" : "OPERATOR",
            "id" : "oper2"
        },
        "api": {
            "url" : "/users/{user_id}/profile",
            "method" : "GET"
        }
    }
}


test_oper2_profile_update_not_allowed {
    not allowed with input as {
        "user": {
            "role" : "OPERATOR",
            "id" : "oper2"
        },
        "api": {
            "url" : "/users/{user_id}/profile",
            "method" : "PUT"
        }
    }
}


test_oper3_profile_read_not_allowed {
    not allowed with input as {
        "user": {
            "role" : "OPERATOR",
            "id" : "oper3"
        },
        "api": {
            "url" : "/users/{user_id}/profile",
            "method" : "GET"
        }
    }
}

test_oper3_profile_update_not_allowed {
    not allowed with input as {
        "user": {
            "role" : "OPERATOR",
            "id" : "oper3"
        },
        "api": {
            "url" : "/users/{user_id}/profile",
            "method" : "PUT"
        }
    }
}

test_user_allowed {
    allowed with input as {
        "user": {
            "role" : "USER",
            "id" : "user1",
            "target_user_id" : "user1",
        },
        "api": {
            "url" : "/users/{user_id}/profile",
            "method" : "PUT"
        }
    }
}

test_user_not_allowed {
    not allowed with input as {
        "user": {
            "role" : "USER",
            "id" : "user1",
            "target_user_id" : "user2",
        },
        "api": {
            "url" : "/users/{user_id}/profile",
            "method" : "PUT"
        }
    }
}

test_user_public {
    allowed with input as {
        "user": {
            "role" : "USER",
            "id" : "user1",
        },
        "api": {
            "url" : "/about",
            "method" : "GET"
        }
    }
}

test_useroper_userlist_read_allowed {
    allowed with input as {
        "user": {
            "role" : "OPERATOR",
            "id" : "useroper"
        },
        "api": {
            "url" : "/users",
            "method" : "GET"
        }
    }
}

test_useroper_user_read_allowed {
    allowed with input as {
        "user": {
            "role" : "OPERATOR",
            "id" : "useroper"
        },
        "api": {
            "url" : "/users/{user_id}",
            "method" : "GET"
        }
    }
}

test_useroper_user_update_not_allowed {
    not allowed with input as {
        "user": {
            "role" : "OPERATOR",
            "id" : "useroper"
        },
        "api": {
            "url" : "/users/{user_id}",
            "method" : "PUT"
        }
    }
}

test_oper1_user_read_not_allowed {
    not allowed with input as {
        "user": {
            "role" : "OPERATOR",
            "id" : "oper1"
        },
        "api": {
            "url" : "/users/{user_id}",
            "method" : "GET"
        }
    }
}

test_goods_not_allowed {
    not allowed with input as {
        "user": {
            "role" : "OPERATOR",
            "id" : "oper2"
        },
        "api": {
            "url" : "/goods",
            "method" : "PUT"
        }
    }
}