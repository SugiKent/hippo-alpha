simulation1 = Simulation.create!(
    title: 'title⭐️test1',
    principal: 100000,
)


AssumedYield.create!(
    simulation: simulation1,
    simulation_id: 1,
    rate: 3,
    order: 1,
    year: 10,
)