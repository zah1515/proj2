
const cds = require('@sap/cds');
module.exports = cds.service.impl(async function () {
    let {
        attachments,
        princy
    } = this.entities;

    const c5re = await cds.connect.to('iflow1');

    this.before('READ', princy, async (req) => {
        debugger
        try {

            const resp = await c5re.get('/odata/v4/catalog/Books');

            const entry = [];
            
            var data1 = resp.value[0].ID;
            entry.push({
                id:data1,
                chartDimension:"dim1"
            });
            // req.params.id[0];
            // const a = await SELECT.from(attachments);

            // var test = resp.data.

            await INSERT.into(princy).entries(entry);


            var first = a;
            let data = [];
            // a.forEach(element => {
            //     if()
            // });

            console.log("hey!");
        } catch (error) {
            
        }
    });
});