o = Organization.create name: 'Edge UChicago'
Track.create name: 'General', organization_id: o.id
Track.create name: 'Labs', organization_id: o.id
Track.create name: 'Academy', organization_id: o.id
Track.create name: 'Ventures', organization_id: o.id
