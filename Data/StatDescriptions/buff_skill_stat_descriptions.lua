return {
	[1]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="给攻击附加 {0} - {1} 点火焰伤害"
				}
			}
		},
		name="attack_added_fire",
		stats={
			[1]="attack_minimum_added_fire_damage",
			[2]="attack_maximum_added_fire_damage"
		}
	},
	[2]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="给攻击附加 {0} - {1} 点冰霜伤害"
				}
			}
		},
		name="attack_added_cold",
		stats={
			[1]="attack_minimum_added_cold_damage",
			[2]="attack_maximum_added_cold_damage"
		}
	},
	[3]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="增益效果附加 {0} 至 {1} 点攻击闪电伤害"
				}
			}
		},
		name="attack_added_lightning",
		stats={
			[1]="attack_minimum_added_lightning_damage",
			[2]="attack_maximum_added_lightning_damage"
		}
	},
	[4]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="增益效果附加 {0} 至 {1} 点法术闪电伤害"
				}
			}
		},
		name="spell_added_lightning",
		stats={
			[1]="spell_minimum_added_lightning_damage",
			[2]="spell_maximum_added_lightning_damage"
		}
	},
	[5]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果使暴击率提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="增益效果使暴击率降低 {0}%"
				}
			}
		},
		name="critical_strike_chance_incr",
		stats={
			[1]="critical_strike_chance_+%"
		}
	},
	[6]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果的总燃烧伤害额外提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="增益效果的总燃烧伤害额外降低 {0}%"
				}
			}
		},
		name="herald_of_ash_burning_damage",
		stats={
			[1]="herald_of_ash_burning_damage_+%_final"
		}
	},
	[7]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果的总法术火焰伤害额外提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="增益效果的总法术火焰伤害额外降低 {0}%"
				}
			}
		},
		name="herald_of_ash_spell_fire_damage_incr",
		stats={
			[1]="herald_of_ash_spell_fire_damage_+%_final"
		}
	},
	[8]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果的冰霜伤害提高 {0}%"
				}
			}
		},
		name="herald_of_ice_cold_damage_incr",
		stats={
			[1]="herald_of_ice_cold_damage_+%"
		}
	},
	[9]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果的闪电伤害提高 {0}%"
				}
			}
		},
		name="herald_of_thunder_lightning_damage_incr",
		stats={
			[1]="herald_of_thunder_lightning_damage_+%"
		}
	},
	[10]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextPhasing"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="增益效果获得【迷踪】状态"
				}
			}
		},
		name="phasing",
		stats={
			[1]="phase_through_objects"
		}
	},
	[11]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextShock"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果使敌人有 {0}% 的几率获得感电效果"
				}
			}
		},
		name="shock_chance",
		stats={
			[1]="base_chance_to_shock_%"
		}
	},
	[12]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果使承受的伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="增益效果使承受的伤害降低 {0}%"
				}
			}
		},
		name="damage_taken_incr",
		stats={
			[1]="base_damage_taken_+%"
		}
	},
	[13]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果使移动速度加快 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="增益效果使移动速度减慢 {0}%"
				}
			}
		},
		name="movement_speed_incr",
		stats={
			[1]="base_movement_velocity_+%"
		}
	},
	[14]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="增益效果 {0:+d} 护甲"
				}
			}
		},
		name="base_armour",
		stats={
			[1]="base_physical_damage_reduction_rating"
		}
	},
	[15]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果使总法术伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="增益效果使总法术伤害降低 {0}%"
				}
			}
		},
		name="berserk_spell_damage_final",
		stats={
			[1]="berserk_spell_damage_+%_final"
		}
	},
	[16]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="每 1% 盾牌品质都使增益效果附加 {0} 到 {1} 点物理伤害"
				}
			}
		},
		name="buff_spell_phys",
		stats={
			[1]="buff_added_spell_minimum_base_physical_damage_per_shield_quality",
			[2]="buff_added_spell_maximum_base_physical_damage_per_shield_quality"
		}
	},
	[17]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextRecoup"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="将承受伤害的 {0}% 吸纳为魔力"
				}
			}
		},
		name="skill_damage_taken_goes_to_mana",
		stats={
			[1]="damage_taken_goes_to_mana_%"
		}
	},
	[18]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="per_minute_to_per_second",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你每秒失去 {0} 点能量护盾"
				}
			}
		},
		name="energy_shield_loss",
		stats={
			[1]="energy_shield_lost_per_minute"
		}
	},
	[19]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="每个耐力球使增益效果获得 {0}% 额外物理伤害减免"
				}
			}
		},
		name="endurance_charge_phys_reduction",
		stats={
			[1]="physical_damage_reduction_%_per_endurance_charge"
		}
	},
	[20]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果使护甲提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="增益效果使护甲降低 {0}%"
				}
			}
		},
		name="armour_incr",
		stats={
			[1]="physical_damage_reduction_rating_+%"
		}
	},
	[21]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="每个耐力球使增益效果 {0:+d}% 所有元素抗性"
				}
			}
		},
		name="endurance_charge_ele_resist",
		stats={
			[1]="resist_all_elements_%_per_endurance_charge"
		}
	},
	[22]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="增益效果使所有抗性 {0:+d}%"
				}
			}
		},
		name="all_resist",
		stats={
			[1]="resist_all_%"
		}
	},
	[23]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="增益效果降低 {0}%"
				}
			}
		},
		name="skill_buff_effect",
		stats={
			[1]="skill_buff_effect_+%"
		}
	},
	[24]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果使攻击和施法速度加快 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="增益效果使攻击和施法速度减慢 {0}%"
				}
			}
		},
		name="buff_grants_attack_and_cast_speed",
		stats={
			[1]="skill_buff_grants_attack_and_cast_speed_+%"
		}
	},
	[25]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果有 {0}% 的几率导致冻结"
				}
			}
		},
		name="buff_grants_chance_to_freeze",
		stats={
			[1]="skill_buff_grants_chance_to_freeze_%"
		}
	},
	[26]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果使伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="增益效果使伤害降低 {0}%"
				}
			}
		},
		name="buff_grants_damage_pluspercent",
		stats={
			[1]="skill_buff_grants_damage_+%"
		}
	},
	[27]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果使法术伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="增益效果使法术伤害降低 {0}%"
				}
			}
		},
		name="spell_damage_incr",
		stats={
			[1]="spell_damage_+%"
		}
	},
	[28]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="增益效果使总护甲额外提高 {0}%"
				}
			}
		},
		name="vaal_molten_shall_armour_incr",
		stats={
			[1]="vaal_molten_shall_armour_+%_final"
		}
	},
	["attack_maximum_added_cold_damage"]=2,
	["attack_maximum_added_fire_damage"]=1,
	["attack_maximum_added_lightning_damage"]=3,
	["attack_minimum_added_cold_damage"]=2,
	["attack_minimum_added_fire_damage"]=1,
	["attack_minimum_added_lightning_damage"]=3,
	["base_chance_to_shock_%"]=11,
	["base_damage_taken_+%"]=12,
	["base_movement_velocity_+%"]=13,
	["base_physical_damage_reduction_rating"]=14,
	["berserk_spell_damage_+%_final"]=15,
	["buff_added_spell_maximum_base_physical_damage_per_shield_quality"]=16,
	["buff_added_spell_minimum_base_physical_damage_per_shield_quality"]=16,
	["critical_strike_chance_+%"]=5,
	["damage_taken_goes_to_mana_%"]=17,
	["energy_shield_lost_per_minute"]=18,
	["herald_of_ash_burning_damage_+%_final"]=6,
	["herald_of_ash_spell_fire_damage_+%_final"]=7,
	["herald_of_ice_cold_damage_+%"]=8,
	["herald_of_thunder_lightning_damage_+%"]=9,
	parent="skill_stat_descriptions",
	["phase_through_objects"]=10,
	["physical_damage_reduction_%_per_endurance_charge"]=19,
	["physical_damage_reduction_rating_+%"]=20,
	["resist_all_%"]=22,
	["resist_all_elements_%_per_endurance_charge"]=21,
	["skill_buff_effect_+%"]=23,
	["skill_buff_grants_attack_and_cast_speed_+%"]=24,
	["skill_buff_grants_chance_to_freeze_%"]=25,
	["skill_buff_grants_damage_+%"]=26,
	["spell_damage_+%"]=27,
	["spell_maximum_added_lightning_damage"]=4,
	["spell_minimum_added_lightning_damage"]=4,
	["vaal_molten_shall_armour_+%_final"]=28
}