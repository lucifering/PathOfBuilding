return {
	[1]={
		stats={
			[1]="active_skill_quality_duration_+%_final"
		},
		name="quality_duration_final",
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="总持续时间额外延长 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					text="总持续时间额外缩短 {0}%",
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					}
				}
			}
		}
	},
	[2]={
		stats={
			[1]="skill_effect_and_damaging_ailment_duration_+%"
		},
		name="skill_and_damaging_ailment_duration_incr",
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextDamagingAilments"
					},
					text="此技能和伤害性异常状态时间延长 {0}%",
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					}
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextDamagingAilments"
					},
					text="此技能和伤害性异常状态时间缩短 {0}%",
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					}
				}
			}
		}
	},
	[3]={
		stats={
			[1]="skill_effect_duration_+%"
		},
		name="skill_duration_incr",
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="持续时间延长 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					text="持续时间缩短 {0}%",
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					}
				}
			}
		}
	},
	[4]={
		stats={
			[1]="support_reduced_duration_skill_effect_duration_+%_final"
		},
		name="support_less_duration",
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="总持续时间额外延长 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					text="总持续时间额外缩短 {0}%",
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					}
				}
			}
		}
	},
	["support_reduced_duration_skill_effect_duration_+%_final"]=4,
	["skill_effect_duration_+%"]=3,
	["skill_effect_and_damaging_ailment_duration_+%"]=2,
	["active_skill_quality_duration_+%_final"]=1,
	parent="skill_stat_descriptions"
}